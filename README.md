# Design Leadership Skills Collection

Agentic skills, commands, and plugins for design leadership — from people and teams to strategy, influence, operating cadence, and the craft of leading. **32 skills** and **12 commands** across **6 plugins** for [Claude Code](https://docs.anthropic.com/en/docs/claude-code).

## Plugins

| Plugin | Skills | Commands | Description |
| --- | --- | --- | --- |
| [people-management](./people-management) | 6 | 2 | Manage and grow people: 1:1s, feedback, growth plans, performance reviews, career ladders, and difficult conversations. |
| [team-building](./team-building) | 6 | 2 | Build the team: hiring loops, job specs, portfolio review, onboarding, team topology, and psychological safety. |
| [design-strategy](./design-strategy) | 5 | 2 | Set direction: design vision, strategy documents, org-level design principles, investment cases, and portfolio prioritisation. |
| [org-influence](./org-influence) | 5 | 2 | Influence the organisation: executive narrative, influence mapping, design advocacy, securing resources, and managing up. |
| [operating-cadence](./operating-cadence) | 5 | 2 | Run the operating system: design reviews at scale, planning cadence, decision frameworks, delegation, and operating rhythm. |
| [leadership-craft](./leadership-craft) | 5 | 2 | Lead yourself: self-leadership, change leadership, conflict resolution, mentorship, and leadership ethics. |

## Quick Start

### Claude Code

**Step 1: Add the marketplace**

```
/plugin marketplace add Owl-Listener/design-leadership-skills
```

**Step 2: Install plugins**

```
/plugin
```

Open the **Discover** tab to see all 6 plugins, then install the ones you want.

### Gemini CLI

Install individual plugins as workspace-scoped extensions:

```
git clone https://github.com/Owl-Listener/design-leadership-skills /tmp/design-leadership-skills
mkdir -p .gemini/extensions
cp -r /tmp/design-leadership-skills/.gemini/extensions/. .gemini/extensions/
```

## What Are Skills and Commands?

- **Skills** are domain knowledge units (nouns). They teach the model about one topic.
- **Commands** are workflows (verbs). They chain skills together to do a job.

## All Commands

| Command | Plugin | Description |
| --- | --- | --- |
| `/people-management:prep-one-on-one` | people-management | Prepare a meaningful 1:1. |
| `/people-management:run-review-cycle` | people-management | Run a performance review cycle for the team. |
| `/team-building:open-a-role` | team-building | Define a role and stand up the hiring loop. |
| `/team-building:onboard-hire` | team-building | Build an onboarding plan for a new hire. |
| `/design-strategy:set-strategy` | design-strategy | Develop a design strategy end to end. |
| `/design-strategy:make-the-case` | design-strategy | Build an investment case for design. |
| `/org-influence:build-narrative` | org-influence | Build an executive narrative to win support. |
| `/org-influence:secure-resources` | org-influence | Prepare a headcount or budget ask. |
| `/operating-cadence:set-cadence` | operating-cadence | Design the team's operating cadence. |
| `/operating-cadence:run-design-review` | operating-cadence | Run a scaled design review process. |
| `/leadership-craft:lead-change` | leadership-craft | Plan and lead a change initiative. |
| `/leadership-craft:resolve-conflict` | leadership-craft | Work through a team conflict. |

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md).

## License

MIT — see [LICENSE](./LICENSE).
